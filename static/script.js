document.addEventListener('DOMContentLoaded', () => {
    const timeSlider = document.getElementById('max_time');
    const timeOutput = document.getElementById('timeOutput');
    const submitBtn = document.getElementById('submitBtn');
    const resultsContainer = document.getElementById('results');
    const loadingSection = document.getElementById('loading');

    timeSlider.addEventListener('input', (e) => {
        timeOutput.textContent = e.target.value;
    });


    submitBtn.addEventListener('click', async () => {
        const checkedInputs = document.querySelectorAll('.chip input[type="checkbox"]:checked');
        const fridge = Array.from(checkedInputs).map(input => input.value);
        const max_time = parseInt(timeSlider.value);
        const allergy = document.getElementById('allergy').value;
        const diet = document.getElementById('diet').value;

        const payload = {
            fridge: fridge,
            max_time: max_time,
            allergy: allergy,
            diet: diet
        };

        resultsContainer.innerHTML = '';
        loadingSection.classList.remove('hidden');

        try {
            const response = await fetch('/api/suggest', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(payload)
            });

            if (!response.ok) {
                throw new Error('Si è verificato un errore durante la connessione al server.');
            }

            const data = await response.json();
            loadingSection.classList.add('hidden');
            const results = data.results || [];

            if (results.length === 0) {
                resultsContainer.innerHTML = `
                    <div class="error-message">
                        لا يمكن تحضير وجبة بهذه الشروط 😔.<br>جرب تغيير المكونات، زيادة الوقت، أو تخفيف القيود الصحية.
                    </div>
                `;
            } else {
                results.forEach(item => {
                    const card = document.createElement('div');
                    card.className = 'meal-card';
                    card.innerHTML = `
                        <h3>🍽️ ${item.meal}</h3>
                        <div class="meal-details">
                            <div class="calories">${item.calories} <span>سُعر</span></div>
                            <div class="badge">${item.carbs}</div>
                        </div>
                    `;
                    resultsContainer.appendChild(card);
                });
            }

        } catch (error) {
            loadingSection.classList.add('hidden');
            console.error('Error fetching meals:', error);
            resultsContainer.innerHTML = `
                <div class="error-message">
                Si è verificato un errore durante la connessione al server. Assicurati che il server Flask sia in esecuzione e riprova.
                </div>
            `;
        }
    });
});
// Simple include system for static sites
async function loadIncludes() {
  const headerElement = document.getElementById('header');
  const footerElement = document.getElementById('footer');
  
  try {
    if (headerElement) {
      const headerResponse = await fetch('/shared/header.html');
      if (headerResponse.ok) {
        headerElement.innerHTML = await headerResponse.text();
      }
    }
    
    if (footerElement) {
      const footerResponse = await fetch('/shared/footer.html');
      if (footerResponse.ok) {
        footerElement.innerHTML = await footerResponse.text();
      }
    }
  } catch (error) {
    console.error('Error loading includes:', error);
  }
}

// Load includes when DOM is ready
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', loadIncludes);
} else {
  loadIncludes();
}
function displayUserForm() {
    const userType = document.getElementById('user-type').value;
    document.getElementById('vendedor-fields').style.display = userType === 'vendedor' ? 'block' : 'none';
    document.getElementById('organizador-fields').style.display = userType === 'organizador' ? 'block' : 'none';
  }
  
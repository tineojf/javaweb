package persistence.models;

public class AsociadoModel {

    private int codigo;
    private String nombre;
    private String apellidos;
    private String estadoCivil;
    private String eps;
    private String dni;
    private double aportes;
    private String nivelEstudio;
    private double salario;
    private int numeroHijos;
    private String telefono;
    private String direccion;

    // Constructors
    public AsociadoModel() {
    }

    public AsociadoModel(int codigo, String nombre, String apellidos, String estadoCivil, String eps, String dni, double aportes, String nivelEstudio, double salario, int numeroHijos, String telefono, String direccion) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.estadoCivil = estadoCivil;
        this.eps = eps;
        this.dni = dni;
        this.aportes = aportes;
        this.nivelEstudio = nivelEstudio;
        this.salario = salario;
        this.numeroHijos = numeroHijos;
        this.telefono = telefono;
        this.direccion = direccion;
    }

    // Methods
    public String getNombreCompleto() {
        return nombre + " " + apellidos;
    }

    // Getters & Setters
    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getEps() {
        return eps;
    }

    public void setEps(String eps) {
        this.eps = eps;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public double getAportes() {
        return aportes;
    }

    public void setAportes(double aportes) {
        this.aportes = aportes;
    }

    public String getNivelEstudio() {
        return nivelEstudio;
    }

    public void setNivelEstudio(String nivelEstudio) {
        this.nivelEstudio = nivelEstudio;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public int getNumeroHijos() {
        return numeroHijos;
    }

    public void setNumeroHijos(int numeroHijos) {
        this.numeroHijos = numeroHijos;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    @Override
    public String toString() {
        return "Asociado{"
                + "codigo=" + codigo
                + ", nombre='" + nombre + '\''
                + ", apellidos='" + apellidos + '\''
                + ", estadoCivil='" + estadoCivil + '\''
                + ", eps='" + eps + '\''
                + ", dni='" + dni + '\''
                + ", aportes=" + aportes
                + ", nivelEstudio='" + nivelEstudio + '\''
                + ", salario=" + salario
                + ", numeroHijos=" + numeroHijos
                + ", telefono='" + telefono + '\''
                + ", direccion='" + direccion + '\''
                + '}';
    }
}

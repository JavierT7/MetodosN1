class BiseccionDelIntervaloController < ApplicationController
  def index
  end

  def metodo
  end

  def generar
    #@table = { :id=>iter, :limite_a=>limite_a, :limite_b=>limite_b, :limite_c=>limite_c, :raiz=>raizx, :funcion=>fx, :tolerancia=>tol}
    @table = [['# Iteraciones', 'a', 'b', 'c', 'x', 'f(x)', 'Tol']]

    cont = 1
    tol=0.01

    cuatro = params[:cuatro].to_f
    tres = params[:tres].to_f
    dos = params[:dos].to_f
    uno = params[:uno].to_f
    consta = params[:consta].to_f
    a = params[:a].to_f
    b = params[:b].to_f

    fxa = (cuatro * (a**4)) + (tres * (a**3)) + (dos * (a**2)) + (uno * a) + consta
    fxb = (cuatro * (b**4)) + (tres * (b**3)) + (dos * (b**2)) + (uno * b) + consta

    if (fxa > 0 && fxb>0) || (fxa<0 && fxb<0)
        flash[:danger] = 'No tienen raices diferentes, no se puede calcular.'
    else

      @table << [cont]
      @table.last << a.round(3)
      @table.last << b.round(3)
      c = ((b - a)/2)
      x = (a + c)
      @table.last << c.round(3)
      @table.last << x.round(3)
      fx = ((cuatro * (x**4)) + (tres * (x**3)) + (dos * (x**2)) + (uno * x) + consta)
      @table.last << fx
      @table.last << (tol > c ? '✔' : '✘')
      fx > 0 ? (b = x) : (a = x)
      while c > tol && fx != 0
        cont += 1
        @table << [cont]
        @table.last << a.round(3)
        @table.last << b.round(3)
        c = ((b - a)/2)
        x = (a + c)
        @table.last << c.round(3)
        @table.last << x.round(3)
        fx = ((cuatro * (x**4)) + (tres * (x**3)) + (dos * (x**2)) + (uno * x) + consta)
        @table.last << fx.round(3)
        @table.last << (tol > c ? '✔' : '✘')
        fx > 0 ? (b = x) : (a = x)
      end

      if fx==0
        @result = "X = #{x.round(3)} es una raiz exacta"
      else
        @result = "X = #{x.round(3)} es una raiz aproximada"
      end
    end

    respond_to do |format|
      format.html { render 'metodo' }
    end
  end

end

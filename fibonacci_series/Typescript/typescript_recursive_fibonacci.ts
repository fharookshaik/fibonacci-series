/**
 * This fibonacci class implements the recursive
 * algorithm for the fibonacci series
 *
 * @param n - The name of the series
 * @param num - The number that you want the series
 */
class Fibonacci {
  private name: string;
  private size: number;
  private serie: Array<string>;

  constructor(n: string, num: number) {
    this.name = n;
    //All the series start on 0
    this.size = num + 1;
    this.serie = [];
  }

  /**
   * @returns the name of the class implementation
   */
  public getName(): string {
    return this.name;
  }

  /**
   * @returns the size of the series array
   */
  public getSize(): number {
    return this.size;
  }

  /**
   * The recursive implementation of fibonacci series
   * @returns the fibonacci number
   */
  private fibonacci(n: number): number {
    if (n > 1) {
      return this.fibonacci(n - 1) + this.fibonacci(n - 2);
    } else if (n === 1) return 1;
    else if (n === 0) return 0;
    else return -1;
  }

  /**
   * Returns and array containing all the series for the number
   * @returns an array containing the fibonacci series for the selected number1
   */
  public showSerie(): Array<string> {
    console.log(`${this.name.toUpperCase()} with the size of ${this.size}`);

    for (let i: number = 0; i < this.size; i++) {
      this.serie.push(`A${i} = ${this.fibonacci(i)}`);
    }
    return this.serie;
  }
}

const fibImplementation = new Fibonacci("First Series", 20);
console.log(fibImplementation.showSerie());

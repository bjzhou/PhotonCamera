.class final Lhvc;
.super Lhub;


# instance fields
.field final synthetic b:Lhve;


# direct methods
.method public constructor <init>(Lhve;)V
    .locals 0

    iput-object p1, p0, Lhvc;->b:Lhve;

    invoke-direct {p0, p1}, Lhub;-><init>(Lhud;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhvc;->b:Lhve;

    iget-object v0, v0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhvc;->b:Lhve;

    iget-object v1, v0, Lhve;->l:Lhiu;

    iget-object v0, v0, Lhve;->n:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

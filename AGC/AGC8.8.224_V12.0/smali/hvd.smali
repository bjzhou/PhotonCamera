.class final Lhvd;
.super Lhuc;


# instance fields
.field final synthetic a:Lhve;


# direct methods
.method public constructor <init>(Lhve;)V
    .locals 0

    iput-object p1, p0, Lhvd;->a:Lhve;

    invoke-direct {p0}, Lhuc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhvd;->a:Lhve;

    iget-object v0, v0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhvd;->a:Lhve;

    iget-object v1, v0, Lhve;->l:Lhiu;

    iget-object v0, v0, Lhve;->m:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

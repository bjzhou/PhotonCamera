.class final Lgrj;
.super Lgrq;


# instance fields
.field final synthetic a:Lgrr;


# direct methods
.method public constructor <init>(Lgrr;)V
    .locals 0

    iput-object p1, p0, Lgrj;->a:Lgrr;

    invoke-direct {p0, p1}, Lgrq;-><init>(Lgrr;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lgrj;->a:Lgrr;

    iget-object v0, v0, Lgrr;->d:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgrj;->a:Lgrr;

    iget-object v1, v0, Lgrr;->d:Lhiu;

    iget-object v0, v0, Lgrr;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.class final Lgrk;
.super Lgrt;


# instance fields
.field final synthetic a:Lgrv;


# direct methods
.method public constructor <init>(Lgrv;)V
    .locals 0

    iput-object p1, p0, Lgrk;->a:Lgrv;

    invoke-direct {p0, p1}, Lgrt;-><init>(Lgrv;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lgrk;->a:Lgrv;

    iget-object v0, v0, Lgrv;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lgrk;->a:Lgrv;

    iget-object v1, v0, Lgrv;->c:Lhiu;

    iget-object v0, v0, Lgrv;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

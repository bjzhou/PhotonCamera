.class final Lizg;
.super Lizm;


# instance fields
.field final synthetic a:Lizj;


# direct methods
.method public constructor <init>(Lizj;Liyz;)V
    .locals 0

    iput-object p1, p0, Lizg;->a:Lizj;

    invoke-direct {p0, p2}, Lizm;-><init>(Liyz;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lizg;->a:Lizj;

    new-instance v1, Lizi;

    invoke-direct {v1, v0}, Lizi;-><init>(Lizj;)V

    invoke-virtual {v0, v1}, Lizj;->c(Lizp;)V

    return-void
.end method

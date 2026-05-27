.class final Lci;
.super Lpn;


# instance fields
.field final synthetic a:Lcq;


# direct methods
.method public constructor <init>(Lcq;)V
    .locals 0

    iput-object p1, p0, Lci;->a:Lcq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lpn;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lci;->a:Lcq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcq;->ab(Z)V

    iget-object v1, v0, Lcq;->e:Lpn;

    iget-boolean v1, v1, Lpn;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcq;->W()Z

    return-void

    :cond_0
    iget-object v0, v0, Lcq;->d:Lpr;

    invoke-virtual {v0}, Lpr;->b()V

    return-void
.end method

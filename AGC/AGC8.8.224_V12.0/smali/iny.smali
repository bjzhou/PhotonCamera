.class Liny;
.super Linx;


# instance fields
.field final synthetic b:Liod;


# direct methods
.method public constructor <init>(Liod;)V
    .locals 0

    iput-object p1, p0, Liny;->b:Liod;

    invoke-direct {p0}, Linx;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Liny;->b:Liod;

    iget-object v0, v0, Liod;->d:Lioe;

    check-cast v0, Liof;

    const/4 v1, 0x1

    iput-boolean v1, v0, Liof;->m:Z

    iget-boolean v1, v0, Liof;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Liof;->c()V

    :cond_0
    return-void
.end method

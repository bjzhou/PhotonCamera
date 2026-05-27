.class final Lge;
.super Lagb;


# instance fields
.field final synthetic a:Lgf;

.field private b:Z

.field private c:I


# direct methods
.method public constructor <init>(Lgf;)V
    .locals 0

    iput-object p1, p0, Lge;->a:Lgf;

    invoke-direct {p0}, Lagb;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lge;->b:Z

    iput p1, p0, Lge;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lge;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lge;->c:I

    iget-object v1, p0, Lge;->a:Lgf;

    iget-object v1, v1, Lgf;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lge;->a:Lgf;

    iget-object v0, v0, Lgf;->b:Laga;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Laga;->a()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lge;->c:I

    iput-boolean v0, p0, Lge;->b:Z

    iget-object v1, p0, Lge;->a:Lgf;

    iput-boolean v0, v1, Lgf;->c:Z

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    iget-boolean v0, p0, Lge;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lge;->b:Z

    iget-object v0, p0, Lge;->a:Lgf;

    iget-object v0, v0, Lgf;->b:Laga;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Laga;->b()V

    :cond_1
    return-void
.end method

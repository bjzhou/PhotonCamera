.class public final Lhr;
.super Ljava/lang/Object;

# interfaces
.implements Laga;


# instance fields
.field a:I

.field final synthetic b:Lhs;

.field private c:Z


# direct methods
.method protected constructor <init>(Lhs;)V
    .locals 0

    iput-object p1, p0, Lhr;->b:Lhs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhr;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lhr;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhr;->b:Lhs;

    const/4 v1, 0x0

    iput-object v1, v0, Lhs;->f:Lbkb;

    iget v1, p0, Lhr;->a:I

    invoke-static {v0, v1}, Lhs;->b(Lhs;I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhr;->b:Lhs;

    invoke-static {v0}, Lhs;->d(Lhs;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhr;->c:Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhr;->c:Z

    return-void
.end method

.method public final d(Lbkb;I)V
    .locals 1

    iget-object v0, p0, Lhr;->b:Lhs;

    iput-object p1, v0, Lhs;->f:Lbkb;

    iput p2, p0, Lhr;->a:I

    return-void
.end method

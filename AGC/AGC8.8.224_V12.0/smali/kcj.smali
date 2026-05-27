.class public final Lkcj;
.super Ljava/lang/Object;

# interfaces
.implements Lkci;


# instance fields
.field private final a:Ljzw;

.field private final b:Lkci;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Lkci;Ljzw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkcj;->b:Lkci;

    iput-object p2, p0, Lkcj;->a:Ljzw;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lkcj;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lkcj;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lkli;
    .locals 2

    iget-boolean v0, p0, Lkcj;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lkcj;->c:Z

    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->a()Lkli;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lkcj;->a:Ljzw;

    invoke-interface {v1, v0}, Ljzw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkcj;->d:Z

    return-object v0

    :cond_0
    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->a()Lkli;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->b()V

    :cond_2
    iget-boolean v0, p0, Lkcj;->d:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->a()Lkli;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->a()Lkli;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lkcj;->a:Ljzw;

    invoke-interface {v1, v0}, Ljzw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->a()Lkli;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lkcj;->b:Lkci;

    invoke-interface {v0}, Lkci;->b()V

    return-void
.end method

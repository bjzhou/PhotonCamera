.class final Lcba;
.super Ljava/lang/Object;

# interfaces
.implements Laed;


# instance fields
.field private final a:Lcaz;

.field private final b:Lcbc;

.field private final c:Laed;


# direct methods
.method public constructor <init>(Laed;Lcaz;Lcbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcba;->c:Laed;

    iput-object p2, p0, Lcba;->a:Lcaz;

    iput-object p3, p0, Lcba;->b:Lcbc;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcba;->c:Laed;

    invoke-interface {v0}, Laed;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcba;->a:Lcaz;

    invoke-interface {v0}, Lcaz;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_0
    instance-of v1, v0, Lcbb;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcbb;

    invoke-interface {v1}, Lcbb;->f()Lfkg;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lfkg;->a:Z

    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcbb;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcbb;

    invoke-interface {v0}, Lcbb;->f()Lfkg;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lfkg;->a:Z

    :cond_0
    iget-object v0, p0, Lcba;->b:Lcbc;

    invoke-interface {v0, p1}, Lcbc;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcba;->c:Laed;

    invoke-interface {v0, p1}, Laed;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

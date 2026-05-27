.class public final Lcwi;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcwi;->a:Loiw;

    iput-object p2, p0, Lcwi;->b:Loiw;

    iput-object p3, p0, Lcwi;->c:Loiw;

    iput-object p4, p0, Lcwi;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcwj;
    .locals 5

    iget-object v0, p0, Lcwi;->a:Loiw;

    invoke-static {v0}, Logj;->a(Loiw;)Logd;

    move-result-object v0

    iget-object v1, p0, Lcwi;->b:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v1

    iget-object v2, p0, Lcwi;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqv;

    iget-object v3, p0, Lcwi;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldhi;

    invoke-interface {v2}, Lcqv;->a()Lika;

    move-result-object v2

    sget-object v4, Lika;->c:Lika;

    if-ne v2, v4, :cond_0

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {v3}, Ldhi;->e()V

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwj;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcwj;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcwi;->a()Lcwj;

    move-result-object v0

    return-object v0
.end method

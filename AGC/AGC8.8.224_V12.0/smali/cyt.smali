.class public final Lcyt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyt;->a:Loiw;

    iput-object p2, p0, Lcyt;->b:Loiw;

    iput-object p3, p0, Lcyt;->c:Loiw;

    iput-object p4, p0, Lcyt;->d:Loiw;

    iput-object p5, p0, Lcyt;->e:Loiw;

    iput-object p6, p0, Lcyt;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldfa;
    .locals 8

    iget-object v0, p0, Lcyt;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, p0, Lcyt;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Liff;

    iget-object v0, p0, Lcyt;->c:Loiw;

    check-cast v0, Litb;

    invoke-virtual {v0}, Litb;->a()Litm;

    move-result-object v4

    iget-object v0, p0, Lcyt;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgeh;

    iget-object v0, p0, Lcyt;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljwb;

    iget-object v0, p0, Lcyt;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldol;

    new-instance v0, Ldfa;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Ldfa;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Lgeh;Ljwb;Ldol;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcyt;->a()Ldfa;

    move-result-object v0

    return-object v0
.end method

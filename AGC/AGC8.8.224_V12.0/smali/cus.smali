.class public final Lcus;
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

    iput-object p1, p0, Lcus;->a:Loiw;

    iput-object p2, p0, Lcus;->b:Loiw;

    iput-object p3, p0, Lcus;->c:Loiw;

    iput-object p4, p0, Lcus;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcur;
    .locals 5

    iget-object v0, p0, Lcus;->a:Loiw;

    check-cast v0, Lcut;

    invoke-virtual {v0}, Lcut;->a()Lcvr;

    move-result-object v0

    iget-object v1, p0, Lcus;->b:Loiw;

    check-cast v1, Lema;

    invoke-virtual {v1}, Lema;->a()Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcus;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgyd;

    iget-object v3, p0, Lcus;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldhi;

    new-instance v3, Lcur;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lcur;-><init>(Lcvr;Landroid/media/AudioManager;Lgyd;[B)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcus;->a()Lcur;

    move-result-object v0

    return-object v0
.end method

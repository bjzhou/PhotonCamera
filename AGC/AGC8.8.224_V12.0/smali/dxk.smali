.class public final Ldxk;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxk;->a:Loiw;

    iput-object p2, p0, Ldxk;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Ldxk;
    .locals 1

    new-instance v0, Ldxk;

    invoke-direct {v0, p0, p1}, Ldxk;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Ldxk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    iget-object v1, p0, Ldxk;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvd;

    const-string v1, "MicrovideoQSharedStartup"

    invoke-static {v0, v1}, Ljvd;->p(Ljuf;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldxk;->a()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

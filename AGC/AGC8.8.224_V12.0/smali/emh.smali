.class public final Lemh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lemh;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Landroid/hardware/SensorManager;
    .locals 2

    iget-object v0, p0, Lemh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lelx;

    sget-object v1, Lelx;->k:Llpu;

    invoke-interface {v0, v1}, Lelx;->a(Llpu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lemh;->a()Landroid/hardware/SensorManager;

    move-result-object v0

    return-object v0
.end method

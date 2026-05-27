.class public final Lmag;
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

    iput-object p1, p0, Lmag;->a:Loiw;

    iput-object p2, p0, Lmag;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmaf;
    .locals 4

    iget-object v0, p0, Lmag;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llzz;

    iget-object v1, p0, Lmag;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v2, Lmaf;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lmaf;-><init>(Llzz;Landroidx/wear/ambient/AmbientMode$AmbientController;[B[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmag;->a()Lmaf;

    move-result-object v0

    return-object v0
.end method

.class public final Lihp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lihp;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/camera/bottombar/BottomBar;
    .locals 1

    iget-object v0, p0, Lihp;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v0, v0, Lihg;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lihp;->a()Lcom/google/android/apps/camera/bottombar/BottomBar;

    move-result-object v0

    return-object v0
.end method

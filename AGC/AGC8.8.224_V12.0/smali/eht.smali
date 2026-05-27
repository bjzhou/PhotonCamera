.class public final Leht;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leht;->a:Loiw;

    iput-object p2, p0, Leht;->b:Loiw;

    iput-object p3, p0, Leht;->c:Loiw;

    iput-object p4, p0, Leht;->d:Loiw;

    iput-object p5, p0, Leht;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lehs;
    .locals 9

    iget-object v0, p0, Leht;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Liff;

    iget-object v0, p0, Leht;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, p0, Leht;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgeh;

    iget-object v0, p0, Leht;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Leik;

    iget-object v0, p0, Leht;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljew;

    new-instance v0, Lehs;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lehs;-><init>(Liff;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Leik;Ljew;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leht;->a()Lehs;

    move-result-object v0

    return-object v0
.end method

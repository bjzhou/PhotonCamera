.class public final Leap;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leap;->a:Loiw;

    iput-object p2, p0, Leap;->b:Loiw;

    iput-object p3, p0, Leap;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Leap;
    .locals 1

    new-instance v0, Leap;

    invoke-direct {v0, p0, p1, p2}, Leap;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Leao;
    .locals 4

    iget-object v0, p0, Leap;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Leap;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lecy;

    iget-object v2, p0, Leap;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lebe;

    new-instance v3, Leao;

    invoke-direct {v3, v0, v1, v2}, Leao;-><init>(Ldhi;Lecy;Lebe;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leap;->a()Leao;

    move-result-object v0

    return-object v0
.end method

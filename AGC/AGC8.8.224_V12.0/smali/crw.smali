.class public final Lcrw;
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

    iput-object p1, p0, Lcrw;->a:Loiw;

    iput-object p2, p0, Lcrw;->b:Loiw;

    iput-object p3, p0, Lcrw;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldja;
    .locals 3

    iget-object v0, p0, Lcrw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljwy;

    iget-object v1, p0, Lcrw;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljyx;

    iget-object v1, p0, Lcrw;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lklx;

    new-instance v2, Ldja;

    invoke-direct {v2, v0, v1}, Ldja;-><init>(Ljwy;Lklx;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcrw;->a()Ldja;

    move-result-object v0

    return-object v0
.end method

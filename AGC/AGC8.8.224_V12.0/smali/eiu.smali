.class public final Leiu;
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

    iput-object p1, p0, Leiu;->a:Loiw;

    iput-object p2, p0, Leiu;->b:Loiw;

    iput-object p3, p0, Leiu;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Leit;
    .locals 2

    iget-object v0, p0, Leiu;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leir;

    iget-object v0, p0, Leiu;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leik;

    iget-object v0, p0, Leiu;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Leit;

    invoke-direct {v1, v0}, Leit;-><init>(Ldhi;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leiu;->a()Leit;

    move-result-object v0

    return-object v0
.end method

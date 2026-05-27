.class public final Leiw;
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

    iput-object p1, p0, Leiw;->a:Loiw;

    iput-object p2, p0, Leiw;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Leiv;
    .locals 2

    iget-object v0, p0, Leiw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leir;

    iget-object v0, p0, Leiw;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    new-instance v1, Leiv;

    invoke-direct {v1, v0}, Leiv;-><init>(Ldhi;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leiw;->a()Leiv;

    move-result-object v0

    return-object v0
.end method

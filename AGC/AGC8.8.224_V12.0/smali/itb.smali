.class public final Litb;
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

    iput-object p1, p0, Litb;->a:Loiw;

    iput-object p2, p0, Litb;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Litm;
    .locals 2

    iget-object v0, p0, Litb;->a:Loiw;

    check-cast v0, Leqx;

    invoke-virtual {v0}, Leqx;->a()Ljuf;

    move-result-object v0

    iget-object v1, p0, Litb;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lisi;

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Litb;->a()Litm;

    move-result-object v0

    return-object v0
.end method

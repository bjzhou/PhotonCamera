.class public final Lfqh;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqh;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfqh;
    .locals 1

    new-instance v0, Lfqh;

    invoke-direct {v0, p0}, Lfqh;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lfsr;
    .locals 1

    iget-object v0, p0, Lfqh;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfsr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfqh;->b()Lfsr;

    move-result-object v0

    return-object v0
.end method

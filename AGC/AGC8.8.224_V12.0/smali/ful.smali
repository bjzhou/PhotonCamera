.class public final Lful;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lful;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lful;
    .locals 1

    new-instance v0, Lful;

    invoke-direct {v0, p0}, Lful;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfuk;
    .locals 2

    iget-object v0, p0, Lful;->a:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v0

    new-instance v1, Lfuk;

    invoke-direct {v1, v0}, Lfuk;-><init>(Lklj;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lful;->a()Lfuk;

    move-result-object v0

    return-object v0
.end method

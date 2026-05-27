.class public final Lffw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffw;->a:Loiw;

    return-void
.end method

.method public static b(Loiw;)Lffw;
    .locals 1

    new-instance v0, Lffw;

    invoke-direct {v0, p0}, Lffw;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lffv;
    .locals 2

    iget-object v0, p0, Lffw;->a:Loiw;

    check-cast v0, Lfjk;

    invoke-virtual {v0}, Lfjk;->a()Lfgj;

    move-result-object v0

    new-instance v1, Lffv;

    invoke-direct {v1, v0}, Lffv;-><init>(Lfgj;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lffw;->a()Lffv;

    move-result-object v0

    return-object v0
.end method

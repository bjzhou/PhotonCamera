.class public final Lggr;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lggr;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lggq;
    .locals 2

    iget-object v0, p0, Lggr;->a:Loiw;

    check-cast v0, Ldjw;

    invoke-virtual {v0}, Ldjw;->a()Lkap;

    move-result-object v0

    new-instance v1, Lggq;

    invoke-direct {v1, v0}, Lggq;-><init>(Lkap;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lggr;->a()Lggq;

    move-result-object v0

    return-object v0
.end method

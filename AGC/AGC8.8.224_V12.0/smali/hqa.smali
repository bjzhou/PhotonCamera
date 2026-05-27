.class public final Lhqa;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhqa;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhpz;
    .locals 4

    iget-object v0, p0, Lhqa;->a:Loiw;

    check-cast v0, Lhqf;

    invoke-virtual {v0}, Lhqf;->a()Lhqe;

    move-result-object v0

    invoke-static {}, Lfys;->c()Lemq;

    move-result-object v1

    new-instance v2, Lhpz;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lhpz;-><init>(Lhqe;Lemq;[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhqa;->a()Lhpz;

    move-result-object v0

    return-object v0
.end method

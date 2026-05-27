.class public final Lknp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lknp;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lknq;
    .locals 1

    iget-object v0, p0, Lknp;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Lknq;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lknp;->a()Lknq;

    move-result-object v0

    return-object v0
.end method

.class public final Lkao;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkao;->a:Loiw;

    return-void
.end method

.method public static b(Lmqp;)Lkaq;
    .locals 0

    check-cast p0, Lmqt;

    iget-object p0, p0, Lmqt;->a:Ljava/lang/Object;

    check-cast p0, Lkaq;

    return-object p0
.end method


# virtual methods
.method public final a()Lkaq;
    .locals 1

    iget-object v0, p0, Lkao;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    invoke-static {v0}, Lkao;->b(Lmqp;)Lkaq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkao;->a()Lkaq;

    move-result-object v0

    return-object v0
.end method

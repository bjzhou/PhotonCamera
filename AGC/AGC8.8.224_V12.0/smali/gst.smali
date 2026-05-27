.class public final Lgst;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgst;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lgst;
    .locals 1

    new-instance v0, Lgst;

    invoke-direct {v0, p0}, Lgst;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 2

    iget-object v0, p0, Lgst;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    new-instance v1, Lbkb;

    invoke-direct {v1, v0}, Lbkb;-><init>(Lmqp;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgst;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

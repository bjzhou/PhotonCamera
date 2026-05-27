.class public final Lgag;
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

    iput-object p1, p0, Lgag;->a:Loiw;

    iput-object p2, p0, Lgag;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgxb;
    .locals 4

    iget-object v0, p0, Lgag;->a:Loiw;

    iget-object v1, p0, Lgag;->b:Loiw;

    new-instance v2, Lgxb;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lgxb;-><init>(Loiw;Loiw;[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgag;->a()Lgxb;

    move-result-object v0

    return-object v0
.end method

.class public final Lfoy;
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

    iput-object p1, p0, Lfoy;->a:Loiw;

    iput-object p2, p0, Lfoy;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lfoy;
    .locals 1

    new-instance v0, Lfoy;

    invoke-direct {v0, p0, p1}, Lfoy;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lgxb;
    .locals 4

    iget-object v0, p0, Lfoy;->a:Loiw;

    iget-object v1, p0, Lfoy;->b:Loiw;

    new-instance v2, Lgxb;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Lgxb;-><init>(Loiw;Loiw;[B[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfoy;->b()Lgxb;

    move-result-object v0

    return-object v0
.end method

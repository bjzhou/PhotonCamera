.class public final Ldjw;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldjw;->a:Loiw;

    return-void
.end method

.method public static b(Lkaq;)Lkap;
    .locals 1

    instance-of v0, p0, Lkap;

    if-eqz v0, :cond_0

    check-cast p0, Lkap;

    goto :goto_0

    :cond_0
    new-instance v0, Ldjz;

    invoke-direct {v0, p0}, Ldjz;-><init>(Lkaq;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a()Lkap;
    .locals 1

    iget-object v0, p0, Ldjw;->a:Loiw;

    check-cast v0, Lkao;

    invoke-virtual {v0}, Lkao;->a()Lkaq;

    move-result-object v0

    invoke-static {v0}, Ldjw;->b(Lkaq;)Lkap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldjw;->a()Lkap;

    move-result-object v0

    return-object v0
.end method

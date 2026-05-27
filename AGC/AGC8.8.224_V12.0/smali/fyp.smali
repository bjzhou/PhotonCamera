.class public final Lfyp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyp;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfyp;
    .locals 1

    new-instance v0, Lfyp;

    invoke-direct {v0, p0}, Lfyp;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 1

    iget-object v0, p0, Lfyp;->a:Loiw;

    check-cast v0, Lfyn;

    invoke-virtual {v0}, Lfyn;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfyp;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

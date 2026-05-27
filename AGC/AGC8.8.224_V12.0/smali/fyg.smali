.class public final Lfyg;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyg;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfyg;
    .locals 1

    new-instance v0, Lfyg;

    invoke-direct {v0, p0}, Lfyg;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 1

    iget-object v0, p0, Lfyg;->a:Loiw;

    check-cast v0, Lfyf;

    invoke-virtual {v0}, Lfyf;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfyg;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

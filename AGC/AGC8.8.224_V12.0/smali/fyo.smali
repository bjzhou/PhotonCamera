.class public final Lfyo;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfyo;->a:Loiw;

    return-void
.end method

.method public static a(Loiw;)Lfyo;
    .locals 1

    new-instance v0, Lfyo;

    invoke-direct {v0, p0}, Lfyo;-><init>(Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 2

    iget-object v0, p0, Lfyo;->a:Loiw;

    check-cast v0, Lfwo;

    invoke-virtual {v0}, Lfwo;->a()Lfuz;

    move-result-object v0

    new-instance v1, Lbkb;

    invoke-direct {v1, v0}, Lbkb;-><init>(Lfuz;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfyo;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

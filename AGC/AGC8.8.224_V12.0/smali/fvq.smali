.class public final Lfvq;
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

    iput-object p1, p0, Lfvq;->a:Loiw;

    iput-object p2, p0, Lfvq;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lfvq;
    .locals 1

    new-instance v0, Lfvq;

    invoke-direct {v0, p0, p1}, Lfvq;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lbkb;
    .locals 3

    iget-object v0, p0, Lfvq;->a:Loiw;

    check-cast v0, Lgca;

    invoke-virtual {v0}, Lgca;->a()Ljvs;

    move-result-object v0

    iget-object v1, p0, Lfvq;->b:Loiw;

    check-cast v1, Lijz;

    invoke-virtual {v1}, Lijz;->a()Lika;

    move-result-object v1

    new-instance v2, Lbkb;

    invoke-direct {v2, v0, v1}, Lbkb;-><init>(Ljvs;Lika;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfvq;->b()Lbkb;

    move-result-object v0

    return-object v0
.end method

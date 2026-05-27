.class public final Ldvi;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ldve;

.field public c:Ldtd;

.field public d:I

.field private final e:Ldsx;


# direct methods
.method public constructor <init>(Ldsx;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Ldvi;->a:I

    sget-object v1, Ldvj;->a:Ldve;

    iput-object v1, p0, Ldvi;->b:Ldve;

    invoke-static {v0}, Lmoz;->e(Z)V

    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v1, Ldte;

    invoke-direct {v1}, Ldte;-><init>()V

    new-instance v2, Ldte;

    invoke-direct {v2}, Ldte;-><init>()V

    new-instance v3, Ldtf;

    invoke-direct {v3, v2, v1}, Ldtf;-><init>(Ldth;Ldth;)V

    iput-object v3, p0, Ldvi;->c:Ldtd;

    iput v0, p0, Ldvi;->d:I

    iput-object p1, p0, Ldvi;->e:Ldsx;

    return-void
.end method

.method public static final c(I)V
    .locals 0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lmoz;->e(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ldsy;
    .locals 7

    iget v2, p0, Ldvi;->a:I

    const/4 v0, -0x1

    if-eq v2, v0, :cond_0

    iput v2, p0, Ldvi;->d:I

    move v3, v2

    goto :goto_0

    :cond_0
    iget v0, p0, Ldvi;->d:I

    if-lez v0, :cond_1

    move v3, v0

    :goto_0
    new-instance v6, Ldvf;

    iget-object v1, p0, Ldvi;->e:Ldsx;

    iget-object v4, p0, Ldvi;->b:Ldve;

    iget-object v5, p0, Ldvi;->c:Ldtd;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ldvf;-><init>(Ldsx;IILdve;Ldtd;)V

    return-object v6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must specify max dimensions when building variable dimensional views!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ldvg;)V
    .locals 2

    new-instance v0, Ldvh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ldvh;-><init>(Ldvg;I)V

    iput-object v0, p0, Ldvi;->b:Ldve;

    return-void
.end method

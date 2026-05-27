.class public final Lhdc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lfse;

.field private final c:Lhsh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/smarts/SmartsHighResBitmapProviderImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhdc;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lhsh;Lfse;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdc;->c:Lhsh;

    iput-object p2, p0, Lhdc;->b:Lfse;

    return-void
.end method


# virtual methods
.method public final a(Lhdw;)V
    .locals 3

    iget-object v0, p0, Lhdc;->c:Lhsh;

    invoke-virtual {v0}, Lhsh;->c()Lmqp;

    move-result-object v0

    iget-object v1, p0, Lhdc;->c:Lhsh;

    invoke-virtual {v1}, Lhsh;->d()Lmqp;

    move-result-object v1

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhbw;

    new-instance v2, Lhda;

    invoke-direct {v2, p0, v1, p1}, Lhda;-><init>(Lhdc;Lmqp;Lhdw;)V

    invoke-interface {v0, v2}, Lhbw;->a(Lhda;)V

    return-void

    :cond_0
    sget-object v0, Lhdc;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "No frame provider."

    const/16 v2, 0xd98

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhdw;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

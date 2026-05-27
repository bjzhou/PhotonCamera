.class public final Lfhu;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lfht;

.field private final c:Lkxv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/StatsCollectorMuxer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfhu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lfht;Lkxv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfhu;->c:Lkxv;

    iput-object p1, p0, Lfhu;->b:Lfht;

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 3

    iget-object v0, p0, Lfhu;->c:Lkxv;

    invoke-interface {v0}, Lkxv;->a()Lkxy;

    move-result-object v0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    new-instance v2, Lfhs;

    invoke-direct {v2, p0, v1, v0}, Lfhs;-><init>(Lfhu;Lnph;Lkxy;)V

    return-object v2
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfhu;->c:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfhu;->c:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfhu;->c:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    return-void
.end method

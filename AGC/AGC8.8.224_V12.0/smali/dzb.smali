.class public final Ldzb;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public final b:Lnph;

.field public final c:Lnph;

.field public final d:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "special_type_id"

    aput-object v2, v0, v1

    sput-object v0, Ldzb;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ldzd;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Ldzb;->b:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Ldzb;->c:Lnph;

    iput-object p2, p0, Ldzb;->d:Ljava/util/concurrent/Executor;

    new-instance v0, Ldgd;

    const/16 v1, 0xd

    invoke-direct {v0, p0, p1, v1}, Ldgd;-><init>(Ldzb;Ldzd;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.class public final Lnto;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lloi;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "FedSqlQueryHandler"

    invoke-static {v0}, Lloi;->s(Ljava/lang/String;)Lloi;

    move-result-object v0

    sput-object v0, Lnto;->b:Lloi;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnto;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

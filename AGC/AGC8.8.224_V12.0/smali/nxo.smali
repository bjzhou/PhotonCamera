.class abstract Lnxo;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnxo;

.field public static final b:Lnxo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lnxm;

    invoke-direct {v0}, Lnxm;-><init>()V

    sput-object v0, Lnxo;->a:Lnxo;

    new-instance v0, Lnxn;

    invoke-direct {v0}, Lnxn;-><init>()V

    sput-object v0, Lnxo;->b:Lnxo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;J)Ljava/util/List;
.end method

.method public abstract c(Ljava/lang/Object;J)V
.end method

.method public abstract d(Ljava/lang/Object;Ljava/lang/Object;J)V
.end method

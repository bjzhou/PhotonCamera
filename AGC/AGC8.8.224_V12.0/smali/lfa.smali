.class public final Llfa;
.super Ljava/lang/Object;


# static fields
.field public static final a:Llez;

.field private static final b:Llez;

.field private static final c:Llez;

.field private static final d:Llez;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/libraries/oliveoil/natives/NativeMemCopier;

    invoke-direct {v0}, Lcom/google/android/libraries/oliveoil/natives/NativeMemCopier;-><init>()V

    sput-object v0, Llfa;->b:Llez;

    new-instance v1, Llex;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Llex;-><init>(I)V

    sput-object v1, Llfa;->c:Llez;

    new-instance v3, Llex;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Llex;-><init>(I)V

    sput-object v3, Llfa;->d:Llez;

    const/4 v5, 0x3

    new-array v5, v5, [Llez;

    aput-object v0, v5, v4

    aput-object v1, v5, v2

    const/4 v0, 0x2

    aput-object v3, v5, v0

    new-instance v1, Lley;

    invoke-direct {v1, v5, v2}, Lley;-><init>([Llez;I)V

    new-instance v2, Lley;

    invoke-direct {v2, v1, v0}, Lley;-><init>(Llez;I)V

    new-instance v0, Lley;

    invoke-direct {v0, v2, v4}, Lley;-><init>(Llez;I)V

    sput-object v0, Llfa;->a:Llez;

    return-void
.end method

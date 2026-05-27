.class public final Lfkr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgsk;

.field public static final b:Lgsk;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lgsk;

    const/high16 v1, 0x41a00000    # 20.0f

    const/high16 v2, 0x43960000    # 300.0f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lgsk;-><init>(FF[B)V

    sput-object v0, Lfkr;->a:Lgsk;

    new-instance v0, Lgsk;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x44160000    # 600.0f

    invoke-direct {v0, v1, v2, v3}, Lgsk;-><init>(FF[B)V

    sput-object v0, Lfkr;->b:Lgsk;

    return-void
.end method

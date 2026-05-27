.class public final Llok;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Lmqp;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    sput-object v0, Llok;->a:Lmqp;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Llok;->b:Ljava/lang/Object;

    return-void
.end method

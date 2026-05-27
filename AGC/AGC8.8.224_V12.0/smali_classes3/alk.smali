.class public final Lalk;
.super Ljava/lang/Object;

# interfaces
.implements Laly;


# static fields
.field public static final a:Lalk;

.field public static final b:Lalk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lalk;

    invoke-direct {v0}, Lalk;-><init>()V

    sput-object v0, Lalk;->b:Lalk;

    new-instance v0, Lalk;

    invoke-direct {v0}, Lalk;-><init>()V

    sput-object v0, Lalk;->a:Lalk;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

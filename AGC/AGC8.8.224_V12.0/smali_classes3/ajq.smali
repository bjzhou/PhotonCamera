.class public final Lajq;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lajq;


# instance fields
.field public final b:Ljava/util/Set;

.field public final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lajq;

    sget-object v1, Lojz;->a:Lojz;

    invoke-direct {v0, v1}, Lajq;-><init>(Ljava/util/Set;)V

    sput-object v0, Lajq;->a:Lajq;

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lajq;->b:Ljava/util/Set;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lajq;->c:Ljava/util/Map;

    return-void
.end method

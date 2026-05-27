.class public abstract Lalz;
.super Ljava/lang/Object;


# instance fields
.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lalz;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract a(Laly;)Ljava/lang/Object;
.end method

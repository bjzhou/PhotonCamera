.class public interface abstract Lbur;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lbur;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lbus;->a:Ljava/util/Map;

    sget-object v0, Lbus;->a:Ljava/util/Map;

    new-instance v1, Lbuu;

    invoke-direct {v1, v0}, Lbuu;-><init>(Ljava/util/Map;)V

    sput-object v1, Lbur;->a:Lbur;

    return-void
.end method

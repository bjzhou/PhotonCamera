.class public interface abstract Laxu;
.super Ljava/lang/Object;


# static fields
.field public static final a:Laxt;

.field public static final b:Laxs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laxt;

    invoke-direct {v0}, Laxt;-><init>()V

    sput-object v0, Laxu;->a:Laxt;

    new-instance v0, Laxs;

    invoke-direct {v0}, Laxs;-><init>()V

    sput-object v0, Laxu;->b:Laxs;

    return-void
.end method

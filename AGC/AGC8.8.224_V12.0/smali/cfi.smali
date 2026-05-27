.class final Lcfi;
.super Lbze;


# instance fields
.field final synthetic a:Lcfj;


# direct methods
.method public constructor <init>(Lcfj;)V
    .locals 0

    iput-object p1, p0, Lcfi;->a:Lcfj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbze;-><init>([I)V

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    iget-object v0, p0, Lcfi;->a:Lcfj;

    const/4 v1, 0x0

    iput-object v1, v0, Lcfj;->f:Lcew;

    invoke-virtual {v0}, Lcfj;->g()V

    return-void
.end method
